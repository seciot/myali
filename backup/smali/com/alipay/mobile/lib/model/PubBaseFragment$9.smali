.class synthetic Lcom/alipay/mobile/lib/model/PubBaseFragment$9;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$lib$model$RequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/mobile/lib/model/RequestType;->values()[Lcom/alipay/mobile/lib/model/RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v1}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
