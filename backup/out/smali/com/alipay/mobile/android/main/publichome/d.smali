.class final Lcom/alipay/mobile/android/main/publichome/d;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/d;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-boolean p2, p0, Lcom/alipay/mobile/android/main/publichome/d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/d;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-boolean v1, p0, Lcom/alipay/mobile/android/main/publichome/d;->a:Z

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->queryPublicHomeFromRPC(Z)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$1001(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Z)V

    .line 250
    return-void
.end method
