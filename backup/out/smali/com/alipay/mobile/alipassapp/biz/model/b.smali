.class public final Lcom/alipay/mobile/alipassapp/biz/model/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->partnerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->logoText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->secondLogoText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->logo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->cardType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/b;->f:Ljava/lang/String;

    return-object v0
.end method
