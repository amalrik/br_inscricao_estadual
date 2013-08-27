# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::SP do

	it "should valid São Paulo states incription" do
		insc_est = BrInscricaoEstadual::SP.new('110.042.490.114')
		insc_est.should be_valid
	end

	it "should not valid São Paulo states incription" do
		insc_est = BrInscricaoEstadual::SP.new('110.043.490.114')
		insc_est.should_not be_valid
	end
end