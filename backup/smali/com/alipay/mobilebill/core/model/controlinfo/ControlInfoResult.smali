.class public Lcom/alipay/mobilebill/core/model/controlinfo/ControlInfoResult;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field public showFinancialMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowFinancialMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/core/model/controlinfo/ControlInfoResult;->showFinancialMenu:Z

    return v0
.end method

.method public setShowFinancialMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/core/model/controlinfo/ControlInfoResult;->showFinancialMenu:Z

    return-void
.end method
