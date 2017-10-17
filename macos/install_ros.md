1. ERROR: the following rosdeps failed to install
  homebrew: Failed to detect successful installation of [qt5]

  Solved: `brew link qt5 --force`
  Refer to: https://github.com/ros-infrastructure/rosdep/issues/490
  
2. ERROR with poco

  Solved: `brew install poco`
  Refer to: https://answers.ros.org/question/110511/class_loader-poco-error/ && https://qiita.com/YoitsuKamijo/items/246683401e08d785a6ce
  
  3. Error: The imported target "Qt5::Core" references the file ros
  
  Solved: `brew link --force qt5 && ln -s /usr/local/Cellar/qt5/5.4.0/mkspecs /usr/local/mkspecs && ln -s /usr/local/Cellar/qt5/5.4.0/plugins /usr/local/plugins`
  Refer: https://github.com/Homebrew/legacy-homebrew/issues/29938

4. Problem with GCC6, `#include_next <stdlib.h>` -> `#include <stdlib.h>`
