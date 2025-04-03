# ai-context.rb - Project Context Configuration for Zed Editor

PROJ_NAME = "zed-editor"

PROJECT_META = {
  type: 'editor',
  primary_language: 'rust',
  description: 'Zed Text Editor',
  dependencies: {
    cargo: 'Cargo.toml',
  },
  runtime: { language_version: 'rust 2024' },
  build: {
    tools: ['cargo'],
    commands: ['cargo build --release']
  },
  architecture: {
    entry_points: ['src/main.rs'],
  }
}

GENERATOR_CONFIG = {
  output_format: 'json',
  max_file_size: 512 * 1024,
  summarize_large_files: true,
  include_line_numbers: false
}

TREE_CONFIG = {
  ignore_patterns: [
    '.git/*',
    'target/*',
    '*.lock',
    '*.log',
    '.cache/*',
    'tooling/*',
    'nix/*',
    'script/*',
    'docs/*',
    'extensions/*',
    '.zed/*',
    '.cloudflare/*',
    '.config/*',
    'meta/*',
    'legal/*',
    'crates/*',
  ],
  options: {
    max_depth: 7,
    include_hidden: false,
    sort_by: 'name'
  }
}


FILES_FOR_CONTEXT = {
  config_files: [
    'Cargo.toml',
  ],
  source_patterns: [
    'crates/**/*.rs',
  ],
  specific_files: [
  ],
  docs: [
    'SPEC.org',
  ]
}

MCP_CONFIG = {
  watch: true,
  tracked_files: FILES_FOR_CONTEXT,
  debounce_ms: 500
}

EXTENSIONS = {
  cli: {
  },
  output_formats: ['json', 'yaml'],
}
