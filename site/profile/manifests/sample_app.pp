class profile::sample_app {
  case $facts['kernel'] {
    'windows': {
      include profile::sample_app::windows
    }
    'Linux': {
      include profile::sample_app::linux
    }
    default: {
      fail('Unsupported operating system!')
    }
}
