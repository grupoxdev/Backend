#!/bin/bash
# echo "Removing photos and documents" 
# rm -rf public/uploads/

echo "\e[91mDroping Data Bases\e[0m"
rails db:drop

echo "\e[91mCreating Data Bases\e[0m"
rails db:create

echo "\e[91mMigrating\e[0m"
rails db:migrate

echo "\e[91mSeeding\e[0m"
rails db:seed

echo "\e[91mAnnotating Models\e[0m"
annotate --exclude tests,fixtures,factories,serializers