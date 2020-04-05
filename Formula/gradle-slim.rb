class GradleSlim < Formula
  desc "Open-source build automation tool based on the Groovy and Kotlin DSL"
  homepage "https://www.gradle.org/"
  url "https://services.gradle.org/distributions/gradle-6.3-all.zip"
  sha256 "0f316a67b971b7b571dac7215dcf2591a30994b3450e0629925ffcfe2c68cc5c"

  bottle :unneeded

  conflicts_with "gradle"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin docs lib src]
    bin.write_exec_script Dir["#{libexec}/bin/gradle"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gradle --version")

    (testpath/"build.gradle").write <<~EOS
      println "gradle works!"
    EOS
    gradle_output = shell_output("#{bin}/gradle build --no-daemon")
    assert_includes gradle_output, "gradle works!"
  end
end
