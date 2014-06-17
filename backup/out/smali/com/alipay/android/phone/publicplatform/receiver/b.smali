.class final Lcom/alipay/android/phone/publicplatform/receiver/b;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroupReceiver_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/receiver/b;->b:Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;

    iput-boolean p2, p0, Lcom/alipay/android/phone/publicplatform/receiver/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/receiver/b;->b:Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;

    iget-boolean v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/b;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;->a(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;Z)V

    .line 36
    return-void
.end method
