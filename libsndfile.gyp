{ "target_defaults":
  { "cflags": [ "-Wno-format" ]
  , "xcode_settings":
    { "WARNING_CFLAGS":
      [ "-Wno-format"
      ]
    }
  , "defines": [ "HAVE_CONFIG_H", ]
  , "include_dirs":
    [ "include/mac"
    , "include/linux"
    , "src/mac"
    , "src/linux"
    ]
  , "direct_dependent_settings":
    { "include_dirs":
      [ "include/mac"
      , "include/linux"
      ]
    }
  , "conditions":
    [ [ "OS != 'mac'"
      , { "include_dirs!":
          [ "include/mac"
          , "src/mac"
          ]
        , "direct_dependent_settings":
          { "include_dirs!": ["include/mac"]
          }
        }
      ]
    , [ "OS != 'linux'"
      , { "include_dirs!":
          [ "include/linux"
          , "src/linux"
          ]
        , "direct_dependent_settings":
          { "include_dirs!": ["include/linux"]
          }
        }
      ]
    , [ "OS != 'windows'"
      , { "sources!": [ "libsndfile-1.0.25/src/windows.c" ] }
      ]
    ]
  }

, "targets":
  [ { "target_name": "libsndfile"
    , "product_prefix": ""
    , "type": "static_library"
    , "link_settings": {"libraries": ["-lm"]}
    , "dependencies":
      [ "libsndfile-common"
      , "libsndfile-g72x"
      , "libsndfile-gsm610"
      ]
    , "export_dependent_settings":
      [ "libsndfile-common"
      , "libsndfile-g72x"
      , "libsndfile-gsm610"
      ]
    }

  , { "target_name": "libsndfile-common"
    , "product_prefix": ""
    , "type": "static_library"
    , "sources":
      [ "libsndfile-1.0.25/src/aiff.c"
      , "libsndfile-1.0.25/src/alaw.c"
      , "libsndfile-1.0.25/src/au.c"
      , "libsndfile-1.0.25/src/audio_detect.c"
      , "libsndfile-1.0.25/src/avr.c"
      , "libsndfile-1.0.25/src/broadcast.c"
      , "libsndfile-1.0.25/src/caf.c"
      , "libsndfile-1.0.25/src/chanmap.c"
      , "libsndfile-1.0.25/src/chunk.c"
      , "libsndfile-1.0.25/src/command.c"
      , "libsndfile-1.0.25/src/common.c"
      , "libsndfile-1.0.25/src/dither.c"
      , "libsndfile-1.0.25/src/double64.c"
      , "libsndfile-1.0.25/src/dwd.c"
      , "libsndfile-1.0.25/src/dwvw.c"
      , "libsndfile-1.0.25/src/file_io.c"
      , "libsndfile-1.0.25/src/flac.c"
      , "libsndfile-1.0.25/src/float32.c"
      , "libsndfile-1.0.25/src/g72x.c"
      , "libsndfile-1.0.25/src/gsm610.c"
      , "libsndfile-1.0.25/src/htk.c"
      , "libsndfile-1.0.25/src/id3.c"
      , "libsndfile-1.0.25/src/ima_adpcm.c"
      , "libsndfile-1.0.25/src/ima_oki_adpcm.c"
      , "libsndfile-1.0.25/src/interleave.c"
      , "libsndfile-1.0.25/src/ircam.c"
      , "libsndfile-1.0.25/src/mat4.c"
      , "libsndfile-1.0.25/src/mat5.c"
      , "libsndfile-1.0.25/src/mpc2k.c"
      , "libsndfile-1.0.25/src/ms_adpcm.c"
      , "libsndfile-1.0.25/src/nist.c"
      , "libsndfile-1.0.25/src/ogg.c"
      , "libsndfile-1.0.25/src/ogg_pcm.c"
      , "libsndfile-1.0.25/src/ogg_speex.c"
      , "libsndfile-1.0.25/src/ogg_vorbis.c"
      , "libsndfile-1.0.25/src/paf.c"
      , "libsndfile-1.0.25/src/pcm.c"
      , "libsndfile-1.0.25/src/pvf.c"
      , "libsndfile-1.0.25/src/raw.c"
      , "libsndfile-1.0.25/src/rf64.c"
      , "libsndfile-1.0.25/src/rx2.c"
      , "libsndfile-1.0.25/src/sd2.c"
      , "libsndfile-1.0.25/src/sds.c"
      , "libsndfile-1.0.25/src/sndfile.c"
      , "libsndfile-1.0.25/src/strings.c"
      , "libsndfile-1.0.25/src/svx.c"
      , "libsndfile-1.0.25/src/txw.c"
      , "libsndfile-1.0.25/src/ulaw.c"
      , "libsndfile-1.0.25/src/voc.c"
      , "libsndfile-1.0.25/src/vox_adpcm.c"
      , "libsndfile-1.0.25/src/w64.c"
      , "libsndfile-1.0.25/src/wav.c"
      , "libsndfile-1.0.25/src/wav_w64.c"
      , "libsndfile-1.0.25/src/windows.c"
      , "libsndfile-1.0.25/src/wve.c"
      , "libsndfile-1.0.25/src/xi.c"
      ]
    }

  , { "target_name": "libsndfile-g72x"
    , "product_prefix": ""
    , "type": "static_library"
    , "sources":
      [ "libsndfile-1.0.25/src/G72x/g721.c"
      , "libsndfile-1.0.25/src/G72x/g723_16.c"
      , "libsndfile-1.0.25/src/G72x/g723_24.c"
      , "libsndfile-1.0.25/src/G72x/g723_40.c"
      , "libsndfile-1.0.25/src/G72x/g72x.c"
      ]
    }

  , { "target_name": "libsndfile-gsm610"
    , "product_prefix": ""
    , "type": "static_library"
    , "sources":
      [ "libsndfile-1.0.25/src/GSM610/add.c"
      , "libsndfile-1.0.25/src/GSM610/code.c"
      , "libsndfile-1.0.25/src/GSM610/decode.c"
      , "libsndfile-1.0.25/src/GSM610/gsm_create.c"
      , "libsndfile-1.0.25/src/GSM610/gsm_decode.c"
      , "libsndfile-1.0.25/src/GSM610/gsm_destroy.c"
      , "libsndfile-1.0.25/src/GSM610/gsm_encode.c"
      , "libsndfile-1.0.25/src/GSM610/gsm_option.c"
      , "libsndfile-1.0.25/src/GSM610/long_term.c"
      , "libsndfile-1.0.25/src/GSM610/lpc.c"
      , "libsndfile-1.0.25/src/GSM610/preprocess.c"
      , "libsndfile-1.0.25/src/GSM610/rpe.c"
      , "libsndfile-1.0.25/src/GSM610/short_term.c"
      , "libsndfile-1.0.25/src/GSM610/table.c"
      ]
    }

  , { "target_name": "sndfile-regtest"
    , "type": "executable"
    , "sources":
      [ "libsndfile-1.0.25/regtest/checksum.c"
      , "libsndfile-1.0.25/regtest/database.c"
      , "libsndfile-1.0.25/regtest/sndfile-regtest.c"
      ]
    , "dependencies": ["libsndfile"]
    , "include_dirs": ["libsndfile-1.0.25/src"]
    }
  ]
}
# -*- mode: python; tab-width: 2 -*-
