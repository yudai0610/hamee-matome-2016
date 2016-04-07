別画面で失礼します。

どれも見覚えがあるものばかりかとは思いますが、改めて見ていきましょう。

一つ一つ、何かしら質問していきますので、答えてください。

### inputタグ(text)
```html
<input type="text" placeholder="type=text">
```

<input type="text" placeholder="type=text">

１行の文字を入力する時はこれ。あまり長い文章などを入力させるのには不向き。

`input`タグは`type="text"`と書かれている箇所が重要になってきます。

`placeholder`属性は、何も入力されていない時に表示する補助テキストを表す属性。

[Q]`input type="text"`を使うべき例を挙げてください。 <font color="white">[A]名前、メールアドレスのように、文章以外のもの</font>

### inputタグ(password)
```html
<input type="password" placeholder="type=password">
```

<input type="password" placeholder="type=password">

パスワードを入力する時はこれ。入力した文字が●●●と伏せ字になる
伏せ字にしても、内部的には入力されたデータは当然そのまま送信されます(そうじゃないとパスワードの確認のしようがないので認証できませんよね？)

[Q]では、伏せ字にすることでどんなメリットがありますか？ <font color="white">[A]ソーシャルエンジニアリングを防ぐことができる</font>

### ラジオボタンとチェックボックス

#### inputタグ(radio)
```html
<label><input type="radio" name="gender"> 男性</label>
<label><input type="radio" name="gender"> 女性</label>
<label><input type="radio" name="gender" checked> その他</label>
```

<label><input type="radio" name="gender"> 男性</label>
<label><input type="radio" name="gender"> 女性</label>
<label><input type="radio" name="gender" checked> その他</label>

ラジオボタンと呼ばれることが多い。

`男性`, `女性`, `その他`のように、複数の選択肢のうちいずれかを選ばせるために使います。
**name**属性が同じ値のラジオボタンは、そのうち1つしか選択することができません。

`checked`属性をつけると、デフォルトでその選択肢をチェックした状態にできます。

> 完全に余談ですが、GoogleやFacebookなどは、男性と女性以外の性別を選べるようにしています。

> これは性的マイノリティに対する配慮の一環です。

> ですから、`name`属性も"sex"(生物学的な性)ではなく、"gender"(社会的な性)にした方が適切な場合が多いのです。

> 興味のある方はこちらのリンクを参照してください

> [Facebookでは50種類の性別を設定できる：「男」「女」以外の性別は山ほどあるのです](http://www.ikedahayato.com/20140516/6442232.html)


#### inputタグ(checkbox)
```html
<input id="cbox" type="checkbox" placeholder="type=checkbox"> チェックボックス
```

好きなお菓子を教えて下さい

<input id="cake" type="checkbox" placeholder="type=checkbox"><label for="cake">ケーキ</label>
<input id="chocolate" type="checkbox" placeholder="type=checkbox"><label for="chocolate">チョコレート</label>
<input id="creampuff" type="checkbox" placeholder="type=checkbox"><label for="creampuff">シュークリーム</label>

チェックボックスと呼ばれることが多い。

ラジオボタンの複数選択可能な版と考えてもらえれば基本OKです。

[Q] どちらが適切ですか？

1.
<div>
<input id="rbtn_agree" type="radio"><label for="rbtn_agree">利用規約に同意します</label>

<button type="button">登録</button>
</div>
2.
<div>
<input id="cbox_agree" type="checkbox"><label for="cbox_agree">利用規約に同意します</label>

<button type="button">登録</button>
</div>

<font color="white">2が適切。1だと解除できない</font>

### selectタグ
```html
<select>
    <option value="">選択して下さい</option>
    <option value="01">中学</option>
    <option value="02">高校</option>
    <option value="03">大学</option>
</select>
```

<select>
    <option value="">選択して下さい</option>
    <option value="01">中学</option>
    <option value="02">高校</option>
    <option value="03">大学</option>
</select>

プルダウンリスト、プルダウンメニュー、セレクト、など人によってまちまちな呼ばれ方

`年齢を選択して下さい`  
-> `10~19歳`  
-> `20~29歳`

のようなときに使う。`multiple`属性をつければ複数選択をさせることも可能。


[Q]ラジオボタン/チェックボックスとselectタグの使い分けを答えてください。
<font color="white">選択肢が少ない場合にラジオボタン/チェックボックスを使う。選択肢が多い場合にselectタグを使う。例えば県名、国名などはほぼセレクトタグ(たまにアンケートサイトとかで県名のラジオボタン見るけど使いづらすぎる)</font>

### textareaタグ
```html
<textarea cols="30" rows="10"></textarea>
```

<textarea cols="30" rows="10"></textarea>

長いテキストを入力する場合はこれ。
ブログや記事へのコメント、Facebook、Twitterの投稿欄はこれ。改行ができる。

### 送信ボタン
```html
<button type="submit">送信</button>
<input type="submit" value="送信">
```

<button type="submit">送信</button>
<input type="submit" value="送信">

formの中にないと押しても反応しません。
どちらでもOKですが、`button`の方が汎用的に使えますし、value属性に日本語を含めなくて済むという意味で、`button`をおススメしたいです。

[`<input type=submit>`は止めて`<button type=submit>`を使うべき](http://qiita.com/irxground/items/c8537d30e9760c5b3e5c)


### labelタグ
入力可能な要素にラベルを付ける。  
**何に対してラベルをつけているのか** を表すために`for`という属性をとります。  
この`for`属性の値と、入力要素の`id`属性が一致していると、  
**そのラベルをクリックした時に、対応している入力要素にフォーカスが当たる** という動作になります。  
きちんと`for`-`id`の紐付けを行わないと、単に見た目だけのタグになってしまうので注意。

クリックしてみよう

<label for="form-name">お名前（for-idの紐付けあり）</label>
<input type="text" id="form-name" name="name">

<label>お名前（紐付けなし）</label>
<input type="text" name="name">

これができてる、できていないで使い心地がけっこう変わってくるのでなるべく使っていきましょう。

## ログイン画面を作ってみる
- `ユーザ名`と`パスワード`を入力できる
- `ログイン`という名前のボタンがある
- **何のタグを使えばいいかは、何が入力されるか考えて、適切なタグを自分で考えること**
- 今の時点では表示できればOK。ログインボタンを押した後は気にしない

解答例

<label for="username">ユーザー名 : </label><input id="username" type="text">
<label for="password">パスワード : </label><input id="password" type="password">
<button type="submit">ログイン</button>

ここまで来たら、Bitbucketに戻りましょう！

[Bitbucket Wiki - htmlとPHPの基礎](https://bitbucket.org/hameesys/2016-training/wiki/html-and-php)