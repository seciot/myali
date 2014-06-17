.class public Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->type:Ljava/lang/String;

    const-string/jumbo v1, "katong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "\u5feb\u6377\uff08\u542b\u5361\u901a\uff09"

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v1, "common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u50a8\u84c4\u5361"

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->bankAccountNo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->bankName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->bankMark:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->desc:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->arriveDateList:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a:Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->cardNoLast4:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
