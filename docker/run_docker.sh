# Put your data in the data/test folder or change the path of the volume. The output will be in the same folder.

docker run \
    --user $(id -u):$(id -g) \
    -v ./data/test:/home/appuser/roshambo/data/volume \
    --rm roshambo \
    --n_confs 0 \
    --ignore_hs \
    --color \
    --sort_by ComboTanimoto \
    --write_to_file \
    --working_dir data/volume \
    --gpu_id 0 \
    query.sdf dataset.sdf