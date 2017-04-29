## ruby_sintra_sequel示例小程序
1. sequel sqlite://db.sqlite3 获取DB实例
2. 创建person表
```ruby
DB.run("create table t (name varchar, age int)")
DB.run("insert xxx")
```
或者
```ruby
DB.create_table :person do
  String :name
  int :age
end
items.insert(:name => 'abc', :age => 20)
```
3. 运行程序
ruby main.rb 或 vscode中F5(launch.json自动生成的)
