# Keep the historical CV URL serving the current PDF on every build.
class LegacyCvAlias < Jekyll::StaticFile
  def path
    File.join(@site.source, "files", "Yuntao_Du_Resume.pdf")
  end
end

class LegacyCvAliasGenerator < Jekyll::Generator
  priority :low

  def generate(site)
    site.static_files << LegacyCvAlias.new(site, site.source, "files", "yuntao_resume.pdf")
  end
end
