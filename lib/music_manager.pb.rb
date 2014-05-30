##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module MusicManager

  ##
  # Message Classes
  #
  class ExportTracksRequest < ::Protobuf::Message
    class TrackType < ::Protobuf::Enum
      define :ALL, 1
      define :STORE, 2
    end
    
  end
  class ExportTracksResponse < ::Protobuf::Message
    class Status < ::Protobuf::Enum
      define :OK, 1
      define :TRANSIENT_ERROR, 2
      define :CLIENT_MAXED, 3
      define :CLIENT_AUTH_ERROR, 4
      define :CLIENT_REG_ERROR, 5
    end
    
    class TrackInfo < ::Protobuf::Message; end
  end
  class AuthRequest < ::Protobuf::Message; end
  class Response < ::Protobuf::Message
    class Type < ::Protobuf::Enum
      define :METADATA, 1
      define :PLAYLIST, 2
      define :PLAYLIST_ENTRY, 3
      define :SAMPLE, 4
      define :JOBS, 5
      define :AUTH, 6
      define :CLIENT_STATE, 7
      define :UPDATE_UPLOAD_STATE, 8
      define :DELETE_UPLOAD_REQUESTED, 9
    end
    
    class AuthStatus < ::Protobuf::Enum
      define :OK, 8
      define :MAX_LIMIT_REACHED, 9
      define :CLIENT_BOUND_TO_OTHER_ACCOUNT, 10
      define :CLIENT_NOT_AUTHORIZED, 11
      define :MAX_PER_MACHINE_USERS_EXCEEDED, 12
      define :CLIENT_PLEASE_RETRY, 13
      define :NOT_SUBSCRIBED, 14
      define :INVALID_REQUEST, 15
    end
    
    class Status < ::Protobuf::Message
      class Code < ::Protobuf::Enum
        define :OK, 1
        define :ALREADY_EXISTS, 2
        define :SOFT_ERROR, 3
        define :METADATA_TOO_LARGE, 4
      end
      
    end
  end
  
  ##
  # Message Fields
  #
  class ExportTracksRequest
    required ::Protobuf::Field::StringField, :client_id, 2
    optional ::Protobuf::Field::StringField, :continuation_token, 3
    optional ::MusicManager::ExportTracksRequest::TrackType, :export_type, 4
    optional ::Protobuf::Field::Int64Field, :updated_min, 5
  end
  
  class ExportTracksResponse
    class TrackInfo
      optional ::Protobuf::Field::StringField, :id, 1
      optional ::Protobuf::Field::StringField, :title, 2
      optional ::Protobuf::Field::StringField, :album, 3
      optional ::Protobuf::Field::StringField, :album_artist, 4
      optional ::Protobuf::Field::StringField, :artist, 5
      optional ::Protobuf::Field::Int32Field, :track_number, 6
      optional ::Protobuf::Field::Int64Field, :track_size, 7
    end
    
    required ::MusicManager::ExportTracksResponse::Status, :status, 1
    repeated ::MusicManager::ExportTracksResponse::TrackInfo, :track_info, 2
    optional ::Protobuf::Field::StringField, :continuation_token, 3
    optional ::Protobuf::Field::Int64Field, :updated_min, 4
  end
  
  class AuthRequest
    required ::Protobuf::Field::StringField, :id, 1
    optional ::Protobuf::Field::StringField, :name, 2
  end
  
  class Response
    class Status
      required ::MusicManager::Response::Status::Code, :code, 1
    end
    
    optional ::MusicManager::Response::Type, :type, 1
    optional ::MusicManager::Response::AuthStatus, :auth_status, 11
    optional ::Protobuf::Field::BoolField, :auth_error, 12
  end
  
  
end
