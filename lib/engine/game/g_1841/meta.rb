# frozen_string_literal: true

require_relative '../meta'

module Engine
  module Game
    module G1841
      module Meta
        include Game::Meta

        DEV_STAGE = :alpha

        GAME_SUBTITLE = nil
        GAME_DESIGNER = 'Federico Vallani and Manlio Manzini'
        GAME_LOCATION = 'Northern Italy'
        GAME_PUBLISHER = :deep_thought_games
        GAME_RULES_URL = 'https://boardgamegeek.com/filepage/170630/1841-rules'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/1841'

        PLAYER_RANGE = [3, 8].freeze
        OPTIONAL_RULES = [
          {
            sym: :p2p_purchases,
            short_name: 'Player to player purchases',
            desc: 'Allow players to buy stock/concessions directly from other players',
          },
          {
            sym: :lite,
            short_name: '1841lite map and rules',
            desc: 'Smaller map, train roster, and bank for a shorter game',
            players: [3, 4, 5, 6],
          },
          {
            sym: :version_1,
            short_name: 'Version 1',
            desc: 'Original auction, map and corporations',
          },
        ].freeze
      end
    end
  end
end
