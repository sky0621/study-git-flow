require 'test/unit'

class TestSample < Test::Unit::TestCase

	class << self
		# テスト群の実行前にコール
		def startup
			p :_startup
		end

		# テスト群の実行後にコール
		def shutdown
			p :_shutdown
		end
	end

	# 毎回テスト実行前にコール
	def setup
		p :setup
	end

	# テストがパスしている場合にテスト実行後にコール
	def cleanup
		p :cleanup
	end

	# 毎回テスト後にコール
	def teardown
		p :teardown
	end
	
	def test_foo
		p 'test_foo'
		assert_true(1 == 1)
	end

	def test_bar
		p ' test_bar'
		assert_equal(1, 1)
	end

end

