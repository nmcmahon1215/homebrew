cask "mysqlworkbench@8.0.21" do
    version "8.0.21"
    sha256 "7d812551cc1cc38e1d5f588e6c91b07f1778c78a04bfe94dafac3a23ea425e88"
    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

  
    name "MySQL Workbench"
    desc "Visual tool to design, develop and administer MySQL servers"
    homepage "https://www.mysql.com/products/workbench/"
  
    app "MySQLWorkbench.app"
  
    zap trash: [
      "~/Library/Application Support/MySQL/Workbench",
      "~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist",
      "~/Library/Caches/com.oracle.workbench.MySQLWorkbench",
      "~/Library/Saved Application State/com.oracle.workbench.MySQLWorkbench.savedState",
    ]
end