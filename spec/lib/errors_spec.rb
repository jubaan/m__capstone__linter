require_relative '../../lib/checks.rb'
require_relative '../../lib/errors.rb'

# rubocop:disable Style/MixinUsage
include SyntaxErrors
# rubocop:enable Style/MixinUsage

RSpec.describe SyntaxErrors do
  describe TrailingSpaceError do
    let(:error) { TrailingSpaceError.new('string', 1) }

    describe '#initialize' do
      it 'Creates the instance TrailingSpaceError' do
        expect(error.class).to eq(SyntaxErrors::TrailingSpaceError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe SpaceBeforeCError do
    let(:error) { SpaceBeforeCError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance SpaceBeforeCError' do
        expect(error.class).to eq(SyntaxErrors::SpaceBeforeCError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe SpaceBeforeSCError do
    let(:error) { SpaceBeforeSCError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance SpaceBeforeSCError' do
        expect(error.class).to eq(SyntaxErrors::SpaceBeforeSCError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe NoIndentError do
    let(:error) { NoIndentError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance NoIndentError' do
        expect(error.class).to eq(SyntaxErrors::NoIndentError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe NoSemiColonError do
    let(:error) { NoSemiColonError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance NoSemiColonError' do
        expect(error.class).to eq(SyntaxErrors::NoSemiColonError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe SpaceBeforeOPError do
    let(:error) { SpaceBeforeOPError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance SpaceBeforeOPError' do
        expect(error.class).to eq(SyntaxErrors::SpaceBeforeOPError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end

  describe SpaceBeforeOPError do
    let(:error) { SpaceBeforeOPError.new('string', 1) }
    describe '#initialize' do
      it 'Creates the instance SpaceBeforeOPError' do
        expect(error.class).to eq(SyntaxErrors::SpaceBeforeOPError)
      end
    end

    describe '#message' do
      it 'returns the error message as a string' do
        expect(error.message.class).to eq(String)
      end
    end
  end
end
