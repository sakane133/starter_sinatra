# frozen_string_literal: true

require_relative './config/environment'

use BeerController
use BreweryController
run ApplicationController
