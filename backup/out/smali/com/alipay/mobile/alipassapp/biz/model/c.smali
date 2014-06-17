.class public final Lcom/alipay/mobile/alipassapp/biz/model/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->b:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->cardList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->b:Z

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->b:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->c:Z

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/c;->c:Z

    return-void
.end method
