<?php

// file_thumb_sizes are used to get list of sizes to crop thubnails 
// the 200 200 key is used to display items in gallery so dont remove them they must be here
// u can add a new key for new size if u want 

    return [
        'file_master_directory_name' => 'files',
        'static_server_path' => 'http://localhost:3333/files',
        'file_thumb_sizes' => [
            [                       // DONT REMOVE THIS SHIT THIS THUMB SIZE IS USED TO DISPLAY IMAGES IN GALLERY
                'width' =>128,
                'height' => 128,
            ],         
            [
                'width' => 200,
                'height' => 200,
            ],
            [
                'width' => 300,
                'height' => 300,
            ]
        ],
        'file_types' => [
            'audio' => 1,
            'video' => 2,
            'image' => 3,
            'other' => 4,
        ],

        'valid_files' => [
            'gif',
            'pdf',
            'jpg',
            'jpeg',
            'mp4',
            'PNG',
            'png'
        ]
    ];