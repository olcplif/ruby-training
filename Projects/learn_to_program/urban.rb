# p 'Input your first name: '
# # fname = gets.chomp
# s = 'I like Ruby'
# p 'Hi all #[s]'
# s = ('a'...'d')
# p s

# Шукає п'ятиці поточного місяця
require 'time'

today = Date.today
c_month = today.month
c_year = today.year

m_start = Date.new(c_year, c_month)
m_end = m_start.next_month - 1

p (m_start..m_end).select{ |d| d.friday? }.map{ |d| d.day}

p (m_start..m_end).select(&:friday?).map(&:day)
