# Django JWT API權限

## 使用說明
下載整個專案後，進入資料夾執行
```
sudo docker-compose up
```
![畫面1](https://i.imgur.com/XzsnUQL.png)

打開瀏覽器輸入：

```
http://localhost:3003/api/
```
![畫面2](https://i.imgur.com/SPuJfB2.png)

出現如上畫面代表完成佈署

由於無實作前端畫面，需利用Postman或curl來進行測試

測試1：帳號建立
```
URL：http://localhost:3003/auth/users/
Parameter：email,username,password
Method：POST
```

![畫面3](https://i.imgur.com/breTcgO.png)

測試2：帳號登入取得JWT Token
記得複製token於下個測試使用
```
URL：http://localhost:3003/api-token-auth
Parameter：username,password
Method：POST
```
![畫面4](https://i.imgur.com/NLopQNE.png)

測試3：取得熱門文章資料

```
URL：http://localhost:3003/api/post/
Headers：Authorization: JWT {token}
Method：GET
```
![畫面5](https://i.imgur.com/gsKQPYt.png)

測試4：新增熱門文章資料

```
URL：http://localhost:3003/api/post/
Headers：Authorization: JWT {token}
Parameter：title(String),photo(URL)
Method：POST
```
![畫面6](https://i.imgur.com/Yk1Np8A.png)

測試5：更新熱門文章資料

```
URL：http://localhost:3003/api/post/3/
Headers：Authorization: JWT {token}
Parameter：title(String),photo(URL)
Method：PUT
```
![畫面7](https://i.imgur.com/qD8t0wp.png)

測試6：刪除熱門文章資料

```
URL：http://localhost:3003/api/post/3/
Headers：Authorization: JWT {token}
Method：DELETE
```
![畫面8](https://i.imgur.com/fAmsW7P.png)

測試7：讀取單筆熱門文章資料

```
URL：http://localhost:3003/api/post/1/
Headers：Authorization: JWT {token}
Method：GET
```
![畫面9](https://i.imgur.com/rJGK7b3.png)
