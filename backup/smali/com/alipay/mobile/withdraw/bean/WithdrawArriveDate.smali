.class public Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->b:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;->arriveDateType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->b:Z

    return v0
.end method
