# frozen_string_literal: true

module Engine
  module Game
    module G18VA
      module Entities
        COMPANIES = [
          {
            name: 'Railway Express Agency',
            value: 40,
            revenue: 10,
            desc: 'Closing this private allows a corporation to increase the value of any one City (not offboard) '\
                  'by $10 permanently and exclusively for that corporation',
            sym: 'P1',
            color: nil,
            abilities: [
              {
                type: 'assign_hexes',
                when: 'owning_corp_or_turn',
                hexes: %w[E2 F3 H3 G4 C4 F5 H5 F7 C8 E8 D9 F11 C12 F13 H13 H15],
                count: 1,
                owner_type: 'corporation',
              },
              {
                type: 'assign_corporation',
                when: 'sold',
                count: 1,
                owner_type: 'corporation',
              },
            ],
          },
          {
            name: 'Tredegar Iron Works',
            value: 60,
            revenue: 15,
            desc: 'Closing this private grants the operating Corporation a $200 discount '\
                  'when buying a train from the depot',
            sym: 'P2',
            color: nil,
            abilities: [
              {
                type: 'train_discount',
                discount: 200,
                owner_type: 'corporation',
                trains: %w[2 3 4 5 6 4D],
                count: 1,
                closed_when_used_up: true,
                when: 'buying_train',
              },
            ],
          },
          {
            name: 'Potomac Yards',
            value: 80,
            revenue: 20,
            desc: 'The owning corporation may choose to close this private to permanently increase its train limit '\
                  'by one or to place an extra, free, disconnected, and nonblocking token '\
                  'in any hex that has a city slot (open or not)',
            sym: 'P3',
            abilities: [
              {
                when: 'owning_corp_or_turn',
                extra_action: true,
                type: 'token',
                owner_type: 'corporation',
                from_owner: false,
                extra_slot: true,
                special_only: true,
                price: 0,
                teleport_price: 0,
                hexes: %w[E2 F3 H3 G4 C4 F5 H5 F7 C8 E8 D9 F11 C12 F13 H13 H15 H1 A6 A12 B15 F17],
              },
            ],
            color: nil,
          },
          {
            name: 'Baltimore & Ohio Presidency',
            value: 140,
            desc: 'This Company is the Baltimore & Ohio Presidency',
            sym: 'P4',
            abilities: [
              { type: 'shares', shares: 'first_president' },
              { type: 'close', when: 'par', corporation: 'B&O' },
              { type: 'no_buy' },
            ],
            color: nil,
          },
        ].freeze

        CORPORATIONS = [
          {
            float_percent: 20,
            sym: 'B&O',
            name: 'Baltimore & Ohio Railroad',
            logo: '18_va/BO',
            simple_logo: '18_va/BO.alt',
            shares: [20, 10, 10, 10, 10, 10, 10, 10, 10],
            tokens: [0, 40, 100, 100],
            coordinates: 'H3',
            color: '#025aaa',
            type: 'ten_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'C&O',
            name: 'Chesapeake & Ohio Railway',
            logo: '18_va/CO',
            simple_logo: '18_va/CO.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'D9',
            color: '#ADD8E6',
            text_color: 'black',
            type: 'five_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'SR',
            name: 'Southern Railway',
            logo: '18_va/SR',
            simple_logo: '18_va/SR.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'F11',
            city: 1,
            color: '#76a042',
            type: 'five_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'N&W',
            name: 'Norfolk & Western Railway',
            logo: '18_va/NW',
            simple_logo: '18_va/NW.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'F13',
            city: 0,
            color: '#7b352a',
            type: 'five_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'WMR',
            name: 'Western Maryland Railway',
            logo: '18_va/WMR',
            simple_logo: '18_va/WMR.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'C4',
            color: '#f48221',
            type: 'five_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'RFPR',
            name: 'Richmond, Fredericksburg & Potomac Railroad',
            logo: '18_va/RFPR',
            simple_logo: '18_va/RFPR.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'F7',
            color: '#d81e3e',
            type: 'five_share',
            always_market_price: true,
          },
          {
            float_percent: 40,
            sym: 'VR',
            name: 'Virginian Railway',
            logo: '18_va/VR',
            simple_logo: '18_va/VR.alt',
            shares: [40, 20, 20, 20],
            tokens: [0, 40],
            coordinates: 'C12',
            color: :purple,
            type: 'five_share',
            always_market_price: true,
          },
        ].freeze
      end
    end
  end
end
