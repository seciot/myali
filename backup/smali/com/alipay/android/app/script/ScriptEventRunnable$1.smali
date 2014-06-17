.class Lcom/alipay/android/app/script/ScriptEventRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/script/ScriptEventRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/script/ScriptEventRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/script/ScriptEventRunnable$1;->this$0:Lcom/alipay/android/app/script/ScriptEventRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "uncatch crash"

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    return-void
.end method
