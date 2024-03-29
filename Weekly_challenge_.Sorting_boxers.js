let rate = [];

function getRate(weights, head2head) {
    head2head.forEach((head,curBoxerIdx) => {
        let winCnt = 0;
        let winHeavier = 0;
        let draw = 0;
        
        for(var i = 0; i < head.length; i++) {
            if(head[i] === 'W'){
                winCnt++;
                weights[curBoxerIdx] < weights[i] ? winHeavier++ : false;
            }
            if(head[i] === 'N'){
                draw++;
            }
        }
        
        rate.push([((winCnt* 100) / (weights.length-draw)), winHeavier, curBoxerIdx, weights[curBoxerIdx]])
    })
}

function cmp (a,b) {
    return b[0] - a[0] || b[1] - a[1] || b[3] - a[3];
}

function solution(weights, head2head) {
    
    getRate(weights, head2head);
    rate.sort(cmp);
    const answer = rate.map(element => element[2] + 1);
    return answer;
}