# frozen_string_literal: true

ORG_FILES = FileList['*.org']
ASSETS_DIR = 'assets'
IMAGE_FILES = FileList["#{ASSETS_DIR}/images/**/*.{png,jpg,jpeg}"]
ICON_FILES  = FileList["#{ASSETS_DIR}/icons/**/*.{png,jpg,jpeg,svg}"]
VIDEO_FILES = FileList["#{ASSETS_DIR}/videos/**/*.{mp4,mov,mkv}"]

desc "Convert all .org files to .md using Pandoc"
task :markdown_to_org do
  ORG_FILES.each do |file|
    md_file = file.sub(/\.org$/, '.md')
    sh "pandoc -f org -t markdown -o #{md_file} #{file}"
    puts "Converted: #{file} → #{md_file}"
  end
end

task mto: :markdown_to_org

desc "Optimize all assets (images, icons, videos)"
task :assets_optimize do
  optimize_images(IMAGE_FILES)
  optimize_images(ICON_FILES)
  optimize_videos(VIDEO_FILES)
  puts "✅ All assets optimized!"
end

task opt: :assets_optimize

def optimize_images(files)
  files.each do |file|
    sh "convert #{file} -strip -interlace Plane -quality 85% #{file}"
    puts "🖼️ Optimized: #{file}"
  end
end

def optimize_videos(files)
  files.each do |file|
    output = file.sub(/\.(mp4|mov|mkv)$/, '_optimized.mp4')
    sh "ffmpeg -i #{file} -vcodec libx264 -crf 23 -preset slow -y #{output}"
    puts "🎥 Optimized: #{file} → #{output}"
  end
end
