-- Project Configuration

return {
  'tpope/vim-projectionist',
  dependencies = 'tpope/vim-dispatch',
  config = function()
    vim.g.projectionist_heuristics = {
      ["vis_api/artisan"] = {
        ['vis_api/app/*.php'] = {
          type = 'source',
          alternate = {
            'vis_api/tests/Unit/{}Test.php',
            'vis_api/tests/Feature/{}Test.php',
          },
        },
        ['vis_api/tests/Feature/*Test.php'] = {
          type = 'test',
          alternate = 'vis_api/app/{}.php',
        },
        ['vis_api/tests/Unit/*Test.php'] = {
          type = 'test',
          alternate = 'vis_api/app/{}.php',
        },
        ['vis_api/app/Models/*.php'] = {
          type = 'model',
        },
        ['vis_api/app/Http/Controllers/*.php'] = {
          type = 'controller',
        },
        ['vis_api/routes/*.php'] = {
          type = 'route',
        },
        ['vis_api/database/migrations/*.php'] = {
          type = 'migration',
        },
      },
      artisan = {
        ['*'] = {
          start = 'php artisan serve',
          console = 'php artisan tinker',
        },
        ['app/*.php'] = {
          type = 'source',
          alternate = {
            'tests/Unit/{}Test.php',
            'tests/Feature/{}Test.php',
          },
        },
        ['tests/Feature/*Test.php'] = {
          type = 'test',
          alternate = 'app/{}.php',
        },
        ['tests/Unit/*Test.php'] = {
          type = 'test',
          alternate = 'app/{}.php',
        },
        ['app/Models/*.php'] = {
          type = 'model',
        },
        ['app/Http/Controllers/*.php'] = {
          type = 'controller',
        },
        ['routes/*.php'] = {
          type = 'route',
        },
        ['database/migrations/*.php'] = {
          type = 'migration',
        },
      },
      ['src/&composer.json'] = {
        ['src/*.php'] = {
          type = 'source',
          alternate = {
            'tests/{}Test.php',
          },
        },
        ['tests/*Test.php'] = {
          type = 'test',
          alternate = 'src/{}.php',
        },
      },
      ['app/&composer.json'] = {
        ['app/*.php'] = {
          type = 'source',
          alternate = {
            'tests/{}Test.php',
          },
        },
        ['tests/*Test.php'] = {
          type = 'test',
          alternate = 'app/{}.php',
        },
      },
    }
  end,
}
