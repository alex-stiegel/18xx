# frozen_string_literal: true

require_relative '../meta'

module Engine
  module Game
    module G18Tokaido
      module Meta
        include Engine::Game::Meta

        DEV_STAGE = :beta
        PROTOTYPE = true
        DEPENDS_ON = '18 Los Angeles'

        GAME_TITLE = '18Tokaido'
        GAME_ISSUE_LABEL = '18Tokaido'
        GAME_DESIGNER = 'Douglas Triggs'
        GAME_LOCATION = 'Central Japan'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/18Tokaido'
        # For now
        GAME_RULES_URL = 'https://github.com/tobymao/18xx/wiki/18Tokaido'

        PLAYER_RANGE = [2, 4].freeze
        OPTIONAL_RULES = [
          {
            sym: :pass_priority,
            short_name: 'Pass Priority',
            players: [3, 4],
            desc: 'player order in stock round determined by order of passing in previous stock round',
          },
          {
            sym: :no_corporation_discard,
            short_name: 'No Discard',
            players: [2, 3],
            desc: 'skips removing a random railroad corporation from the game',
          },
          {
            sym: :limited_express,
            short_name: 'Limited Express',
            desc: 'removes one of the 6 trains from the game (for a faster train rush)',
          },
          {
            sym: :snake_draft,
            short_name: 'Snake Draft',
            desc: 'snake draft for privates',
          },
          {
            sym: :waterfall_auction,
            short_name: 'Waterfall Auction',
            desc: 'standard waterfall auction for privates',
          },
          {
            sym: :expanded_tileset,
            short_name: 'Expanded Tileset',
            desc: 'slightly expanded (newbie-friendly) tileset',
          },
          {
            sym: :no_yellow_zone,
            short_name: 'No Yellow Zone',
            desc: 'removes yellow zone from stock market (for slightly more newbie-friendly game)',
          },
        ].freeze
      end
    end
  end
end
