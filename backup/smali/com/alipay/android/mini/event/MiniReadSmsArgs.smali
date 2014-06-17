.class public abstract Lcom/alipay/android/mini/event/MiniReadSmsArgs;
.super Lcom/alipay/android/mini/event/MiniEventArgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->m:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method


# virtual methods
.method public abstract reSendSuccess()V
.end method

.method public abstract readSuccess(Ljava/lang/String;)V
.end method
