# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pod2lib < Formula
  desc "iOS 开发中的cocoapod转为.a .h 静态库，为二进制化方案之一，cocoapod-package对pod编译有时会编译不通过，故此方案较为保险"
  homepage "iOS 开发中的cocoapod转为.a .h 静态库，为二进制化方案之一，cocoapod-package对pod编译有时会编译不通过，故此方案较为保险"
  url "https://github.com/lichanghong/homebrew-pod2lib/raw/master/Formula/pod2lib-0.1.3.tar.gz"：
  sha256 "40577a9efb6a374cc7f6a31b333646ae94c60df8871131b24c4654461a610240"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
	bin.install "pod2lib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test pod2lib`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
