1. ERROR: the following rosdeps failed to install
  homebrew: Failed to detect successful installation of [qt5]

  Solved: `brew link qt5 --force`
  Refer to: https://github.com/ros-infrastructure/rosdep/issues/490
  
2. ERROR with poco

  Solved: `brew install poco`
  Refer to: https://answers.ros.org/question/110511/class_loader-poco-error/ && https://qiita.com/YoitsuKamijo/items/246683401e08d785a6ce
  
