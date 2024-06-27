# Helloworld

An example gem to demonstrate how to build a Ruby gem and Dockerize it.
This gem is not published on RubyGems.org, so you can only use it by building the Docker container.

## Docker
You can build and start the Docker container using the provided Makefile.

### Build the Docker Image
To build the Docker image, run:
```bash
$ make build

```
### Start the Docker Container
To start the Docker container, run:
```bash
$ make start
docker run -it --rm --name helloworld_container helloworld
irb(main):001:0> require 'helloworld'
=> true
irb(main):002:0> Helloworld.greet
Hello, World!
=> nil
```

### Stop the Docker Container
To stop the Docker container, run:
```bash
$ make stop
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/huynhsx/helloworld. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/huynhsx/helloworld/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Helloworld project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/huynhsx/helloworld/blob/master/CODE_OF_CONDUCT.md).
