/* ----------------slide js bấm 2 icon sẽ chạy qua chạy lại imge------ */
const adressbtn = document.querySelector('#adress-form')
const addressclone = document.querySelector('#adress-clone')
// adressbtn.addEventListener("click", function(){
//     document.querySelector('adress-form').style.display = "flex"
// })
// addressclone.addEventListener("click", function(){
//     document.querySelector('adress-form').style.display = "none"
// })

// tạo biến và gắn div sử dụng chức năng cho nó
const rightbtn = document.querySelector('.fa-chevron-right')
const leftbtn = document.querySelector('.fa-chevron-left')
const imgNumber = document.querySelectorAll('.slider-content-left-top img')
// biến let mới có thể click nhiều lần
let index = 0
// lấy biến và tạo cái event cho nó ở đây là click
rightbtn.addEventListener ("click", function(){
    index = index+1
    if(index>imgNumber.length-1){
        index = 0
    }
    // chọn tag cha và thực hiện kiểu hoạt động ở đây là kiểu click qua phải 0 sẽ nhân với độ dài của tag con là img bằng 100%
    document.querySelector(".slider-content-left-top").style.right = index * 100 +"%"
})

leftbtn.addEventListener ("click", function(){
    index = index-1
    if(index<=0){
        index = imgNumber.length -1
    }
    document.querySelector(".slider-content-left-top").style.right = index * 100 +"%"
})
/* ----------------slide js 2 bấm tag li tiêu đề sẽ chạy qua lại imge and đổi màu border-top tag dx chọn------ */
// const imgNumberLi = document.querySelectorAll('.slider-content-left-bottom li')
// lấy biến imgNumber và forech đặt tên là image và index để lấy giá trị cái này phải console.log(image of index) sau đó f12 và bấm vào console là hiểu nó lấy cái gí trị gì của 2 biến đó
// imgNumberLi.forEach(function(image,index){
//     image.addEventListener("click", function(){
//         removeactive()
//         document.querySelector(".slider-content-left-top").style.right = index * 100 + "%"
//         image.classList.add("active")
//     })
// })
// function removeactive (){
//     let imgactive = document.querySelector('.active')
//     imgactive.classList.remove("active")
// }
/* ----------------slide js 3 tự động nhảy qua lại img  ------ */
function imgAuto () {
    index += 1
    if(index>imgNumber.length-1){
        index = 0
    }
    // removeactive()
    // gọi lại phương thức div .slider-content-left-top sẽ chạy qua phải
    document.querySelector(".slider-content-left-top").style.right = index * 100 + "%"
    // lây lại biến li tạo mảng bỏ index có chứa độ dài của img sau đó lấy add và add lại class ("acctive") của thằng li 1
    // classList là lấy add list của div
    // imgNumberLi[index].classList.add("active")
}
// set cho hàm imgAuto sẽ tự chạy sau 5giây
setInterval(imgAuto,3000)