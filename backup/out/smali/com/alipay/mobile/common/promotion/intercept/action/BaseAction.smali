.class public Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;
.super Ljava/lang/Object;


# instance fields
.field protected desc:Lcom/alipay/mobile/common/promotion/intercept/desc/ActionDesc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/promotion/intercept/desc/ActionDesc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/action/BaseAction;->desc:Lcom/alipay/mobile/common/promotion/intercept/desc/ActionDesc;

    return-void
.end method


# virtual methods
.method public exec()V
    .locals 0

    return-void
.end method

.method protected getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    return-object v0
.end method
