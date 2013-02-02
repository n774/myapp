# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rate.create(:g_id => 'g1', :rate_id => 'a', :brate_id => 'b', 
	:point => 99, :comment => 'aaa')
Rate.create(:g_id => 'g1', :rate_id => 'a', :brate_id => 'c', 
	:point => 88, :comment => 'iii')
Rate.create(:g_id => 'g1', :rate_id => 'b', :brate_id => 'a', 
	:point => 70, :comment => 'uuu')
Rate.create(:g_id => 'g1', :rate_id => 'b', :brate_id => 'c', 
	:point => 30, :comment => 'eee')

User.create(:u_id => 'admin', :u_name => 'ADMIN', :g_id => 'g0',
	:password => "test", :password_confirmation => "test")
User.create(:u_id => 'a', :u_name => 'A', :g_id => 'g1',
	:password => "test", :password_confirmation => "test")
User.create(:u_id => 'b', :u_name => 'B', :g_id => 'g1',
	:password => "test", :password_confirmation => "test")
User.create(:u_id => 'c', :u_name => 'C', :g_id => 'g1',
	:password => "test", :password_confirmation => "test")
User.create(:u_id => 'd', :u_name => 'D', :g_id => 'g2',
	:password => "test", :password_confirmation => "test")

Group.create(:g_id => 'g1', :g_name => 'Group1')
Group.create(:g_id => 'g2', :g_name => 'Group2')