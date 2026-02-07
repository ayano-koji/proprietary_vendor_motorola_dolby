#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

blob_fixups: blob_fixups_user_type = {
    'vendor/etc/vintf/manifest/vendor.dolby.media.c2@1.0-service.xml': blob_fixup()
     .regex_replace(r'            <instance>software</instance>\n', ''),
    (
        'vendor/lib/libdlbpreg.so',
        'vendor/lib/soundfx/libdlbvol.so',
        'vendor/lib/soundfx/libswdap.so',
        'vendor/lib/soundfx/libswgamedap.so',
        'vendor/lib/soundfx/libswspatializer.so',
        'vendor/lib64/libcodec2_soft_ac4dec.so',
        'vendor/lib64/libcodec2_soft_ddpdec.so',
        'vendor/lib64/libdlbdsservice.so',
        'vendor/lib64/libdlbpreg.so',
        'vendor/lib64/soundfx/libdlbvol.so',
        'vendor/lib64/soundfx/libswdap.so',
        'vendor/lib64/soundfx/libswgamedap.so',
        'vendor/lib64/soundfx/libswspatializer.so'
    ): blob_fixup().replace_needed('libstagefright_foundation.so', 'libstagefright_foundation-v33.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'dolby',
    'motorola',
    blob_fixups=blob_fixups,
    device_rel_path='vendor/motorola/dolby',
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
