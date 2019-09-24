# github-actions-stack-docker-action

This action run command with stack.

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
