#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

REQUIRED_GEMS = %w[
  rubocop
  ruby-lsp
  pry
]

def gem_installed?(name)
  Gem::Specification.find_all_by_name(name).any?
end

def install_gem(name)
  puts "→ Instalando #{name}..."
  system("gem install #{name}")
end

def check_or_install_gems
  REQUIRED_GEMS.each do |gem_name|
    if gem_installed?(gem_name)
      puts "✓ #{gem_name} já está instalado."
    else
      install_gem(gem_name)
    end
  end
end

puts "🔧 Verificando e instalando ferramentas de desenvolvimento..."
check_or_install_gems
puts "✅ Tudo pronto!"
