.class final Lcom/alipay/android/phone/publicplatform/home/e;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/e;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/e;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$600(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "20000048"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    new-instance v0, Lcom/alipay/mobile/publicsvc/home/proguard/a/b;

    const-string/jumbo v1, "UC-SERVICE-01"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, "addServiceView"

    const-string/jumbo v5, "publicIndexList"

    const-string/jumbo v6, "addIcon"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/home/proguard/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/a/a;->a(Lcom/alipay/mobile/publicsvc/home/proguard/a/b;)V

    .line 516
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
