// Copyright 2020 Paul Salvador Inventado and Google LLC
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
#include "cpputils/karel/karel.h"

void KarelProgram() {
  // TODO: Your Karel code here.
}

int main() {
  LoadWorld("worlds/CollectNewspaperKarel.w");
  KarelProgram();
  Finish();
  return 0;
}
