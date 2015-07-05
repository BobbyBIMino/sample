require "mysql"
dbc=Mysql.real_connect('localhost','root','password','mysql')
res=dbc.query('select * from user')
while row=res.fetch_row do
puts "#{row[0]}"
end