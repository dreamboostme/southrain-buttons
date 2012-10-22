# coding: utf-8

#--- Читаем шаблон ===
tf = File.open './template.html', 'r'
html = tf.read
tf.close


#--- Заплняем шаблон ===
bhtml = ''
Dir['./img/s/*.jpg'].sort!.each do |f|
  bhtml << "<a title='#{File.basename(f, '.jpg')}' style='background-image: url(#{f})' href='./img/b/#{File.basename(f, '.jpg')}.png' class='button'></a>\n"
end
html.sub! /<!--<<BUTTONS>>-->/, bhtml


#--- Записываем получившийся код в файл ===
nf = File.open './index.html', 'w'
nf.write html
nf.close