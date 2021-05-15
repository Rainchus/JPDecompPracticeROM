# Paper Mario

[![Build Status][jenkins-badge]][jenkins]
[![Progress (US)][progress-us-badge]][progress-us]
[![Progress (JP)][progress-jp-badge]][progress-jp]

[jenkins]: https://jenkins.deco.mp/job/papermario/job/master
[jenkins-badge]: https://img.shields.io/jenkins/build?jobUrl=https%3A%2F%2Fjenkins.deco.mp%2Fjob%2Fpapermario%2Fjob%2Fmaster

[progress-us]: https://papermar.io/progress-us
[progress-us-badge]: https://img.shields.io/endpoint?url=https://papermar.io/reports/progress_us_shield.json

[progress-jp]: https://papermar.io/progress-us
[progress-jp-badge]: https://img.shields.io/endpoint?url=https://papermar.io/reports/progress_jp_shield.json

# Initial Setup
Clone the repo to a WSL/linux directory<br />
To set up the mod for compiling, first obtain an original jp ROM<br />
papermario.jp.z64 `sha1: b9cca3ff260b9ff427d981626b82f96de73586d3`<br />
and place it in the ver/jp directory with the name `baserom.z64`<br />

# Splitting
Type `./configure` to generate a ninja file for compiling<br />
you can add the arg `--clean` to `./configure` to resplit and generate the asm .o files of unmatched code

# Compiling
Type `ninja` to compile the ROM<br />
you can add the args `-t clean` to delete any non-source files built by ninja

