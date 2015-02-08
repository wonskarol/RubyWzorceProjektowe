require 'drb/drb'
require_relative 'math_service'

math_service = MathService.new

DRb.start_service("druby://localhost:3030", math_service)
DRb.thread.join