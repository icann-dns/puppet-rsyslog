# frozen_string_literal: true

require 'spec_helper'

describe 'Rsyslog::Actions::Outputs::Omjournal' do
  let(:data) do
    {
      template: 't_redis'
    }
  end

  context 'with valid data' do
    context 'full data' do
      it { is_expected.to allow_value(data) }
    end
  end

  context 'with invalid data' do
    context 'bad strings' do
      let(:bad_strings) do
        {
          template: ''
        }
      end

      it { is_expected.not_to allow_value(bad_strings) }
    end
  end
end
