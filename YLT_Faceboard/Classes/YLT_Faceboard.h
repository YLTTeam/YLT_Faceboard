//
//  YLT_Faceboard.h
//  Pods
//
//  Created by YLT_Alex on 2017/11/20.
//

#ifndef YLT_Faceboard_h
#define YLT_Faceboard_h

/**
 * 表情类型
 */
typedef NS_ENUM(NSInteger, YLT_EmojiType) {
    YLT_EmojiTypeEmoji,       // 基本emoji
    YLT_EmojiTypeWealth,      // 财神表情
    YLT_EmojiTypeFavorite,    // 我喜欢的
    YLT_EmojiTypeGif,         // 远程下载的表情
};

/**
 * 表情包状态
 */
typedef NS_ENUM(NSInteger, YLT_EmojiGroupStatus) {
    YLT_EmojiGroupStatusUnDownload,
    YLT_EmojiGroupStatusDownloaded,
    YLT_EmojiGroupStatusDownloading,
};

#endif /* YLT_Faceboard_h */
