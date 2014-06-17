.class final Lcom/alipay/android/phone/home/ui/i;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;

    invoke-direct {v0}, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;-><init>()V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "query bill remind info"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->i(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;->getWaitPayRecordNum(Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;)Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
