require 'digest'

module Endless
  class DropboxResource < ::RackDAV::Resource
    include WEBrick::HTTPUtils

    # If this is a collection, return the child resources.
    def children
      [ child("abc") ]
    end

    # Is this resource a collection?
    def collection?
      true
    end

    # Does this recource exist?
    def exist?
      puts 'exist?'
      true
    end

    # Return the creation time.
    def creation_date
      puts 'creation_date'
      Time.now
    end

    # Return the time of last modification.
    def last_modified
      puts 'last_modified'
      Time.now
    end

    # Set the time of last modification.
    def last_modified=(time)
      puts 'last_modified='
    end

    # Return an Etag, an unique hash value for this resource.
    def etag
      puts 'etag'
    end

    # Return the resource type.
    #
    # If this is a collection, return a collection element
    def resource_type
      puts 'resource_type'
      if collection?
        Nokogiri::XML::fragment('<D:collection xmlns:D="DAV:"/>').children.first
      end
    end

    # Return the mime type of this resource.
    def content_type
      puts 'content_type'
    end

    # Return the size in bytes for this resource.
    def content_length
      puts 'content_length'
    end

    def set_custom_property(name, value)
      puts 'set_custom_property'
    end

    def get_custom_property(name)
      puts 'get_custom_property'
    end

    def list_custom_properties
      puts 'list_custom_properties'
    end

    # HTTP GET request.
    #
    # Write the content of the resource to the response.body.
    def get
      puts 'get'
    end

    # HTTP PUT request.
    #
    # Save the content of the request.body.
    def put
      puts 'put'
    end

    # HTTP POST request.
    #
    # Usually forbidden.
    def post
    end

    # HTTP DELETE request.
    #
    # Delete this resource.
    def delete
    end

    # HTTP COPY request.
    #
    # Copy this resource to given destination resource.
    def copy(dest)
      puts 'copy'
    end

    # HTTP MOVE request.
    #
    # Move this resource to given destination resource.
    def move(dest)
      puts 'move'
    end

    # HTTP MKCOL request.
    #
    # Create this resource as collection.
    def make_collection
      puts 'make_collection'
    end

    # Write to this resource from given IO.
    def write(io)
      puts 'write'
    end
  end
end
