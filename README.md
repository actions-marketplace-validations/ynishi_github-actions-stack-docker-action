# github-actions-stack-docker-action

This action run command with stack.

This is experimental, not efficient because of no support cache at Sep 2019, https://github.community/t5/GitHub-Actions/Caching-files-between-GitHub-Action-executions/m-p/30974/highlight/true#M630

If not needed clean docker image, just install stack with `run`.

## Inputs

### `command`

**Required** The command for stack. Default `"build"`.

### `packages`

The apt packages to build. Sparated by space.

## Outputs

None

## Example usage
```
uses: ynishi/github-actions-stack-docker-action@v1.1
with:
  command: 'test'
  packages: 'libpng-dev wget'
```
