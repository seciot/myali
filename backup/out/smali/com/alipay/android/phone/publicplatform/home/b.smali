.class final Lcom/alipay/android/phone/publicplatform/home/b;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/main/listener/OnPublicHomeListQueryFinishListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/b;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryFinish()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/b;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    #getter for: Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;
    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$000(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/b/b;->a()I

    .line 165
    return-void
.end method
