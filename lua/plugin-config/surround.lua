local status, surround = pcall(require, 'surround')
if not status then
    vim.notify('没有找到 surround')
    return
end
--快捷键
--[[ 
ds<char>
cs<from><to>
ys{motion}{char}
 ]]
surround.setup({
    mappings_style = 'surround',
})
