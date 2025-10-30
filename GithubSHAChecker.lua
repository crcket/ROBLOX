local Checker = {}

function Checker.CheckGithubSHA(githubUrl)
    local user, repo, ref = githubUrl:match('githubusercontent%.com/([^/]+)/([^/]+)/(.+)')
    if not user or not repo or not ref then return 00 end
    local branch = ref:match('refs/heads/([^/]+)')
    local remainingPath = ref:match('refs/heads/[^/]+/(.+)')
    if not branch then
        branch = ref:match('^([a-f0-9]+)')
        remainingPath = ref:match('^[a-f0-9]+/(.+)')
    end
    branch = branch or 'main'
    local apiUrl = string.format('https://api.github.com/repos/%s/%s/commits/%s', user, repo, branch)
    local response = request({
        Url = apiUrl,
        Method = 'GET',
        Headers = { ['User-Agent'] = 'GTC' },
    })
    if not response.Success then return 00 end
    local data = game:GetService('HttpService'):JSONDecode(response.Body)
    if not data or not data.sha then return 00 end
    return data.sha:sub(1, 7)
end

return Checker
