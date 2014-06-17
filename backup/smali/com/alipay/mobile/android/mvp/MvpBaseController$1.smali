.class Lcom/alipay/mobile/android/mvp/MvpBaseController$1;
.super Ljava/lang/Object;
.source "MvpBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/mvp/MvpBaseController;

.field final synthetic val$dataEvent:Lcom/alipay/mobile/android/mvp/DataEvent;

.field final synthetic val$notifyType:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;Lcom/alipay/mobile/android/mvp/DataEvent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->this$0:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    iput-object p2, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->val$dataEvent:Lcom/alipay/mobile/android/mvp/DataEvent;

    iput p3, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->val$notifyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->this$0:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    #getter for: Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;
    invoke-static {v0}, Lcom/alipay/mobile/android/mvp/MvpBaseController;->access$000(Lcom/alipay/mobile/android/mvp/MvpBaseController;)Lcom/alipay/mobile/android/mvp/DataObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->val$dataEvent:Lcom/alipay/mobile/android/mvp/DataEvent;

    iget v2, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;->val$notifyType:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/android/mvp/DataObservable;->notifyDataObservers(Lcom/alipay/mobile/android/mvp/DataEvent;I)V

    .line 48
    return-void
.end method
