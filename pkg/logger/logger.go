package logger

import (
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

var (
	log = zap.S()
	cfg = zap.Config{
		Encoding:    "console",
		OutputPaths: []string{"stderr"},
		EncoderConfig: zapcore.EncoderConfig{
			MessageKey:  "message",
			TimeKey:     "time",
			EncodeTime:  zapcore.ISO8601TimeEncoder,
			LevelKey:    "level",
			EncodeLevel: zapcore.CapitalLevelEncoder,
		},
	}
)

func Configure(level int) {
	cfg.Level = zap.NewAtomicLevelAt(zap.InfoLevel)
	zLogger, _ := cfg.Build()
	log = zLogger.Sugar()
}

func Level() int {
	//TODO
	return 0
}

// Debug logs a message at level Debug on the standard logger.
func Debug(args ...interface{}) {
	log.Debug(args...)
}

// Info logs a message at level Info on the standard logger.
func Info(args ...interface{}) {
	log.Info(args...)
}

// Warn logs a message at level Warn on the standard logger.
func Warn(args ...interface{}) {
	log.Warn(args...)
}

// Error logs a message at level Error on the standard logger.
func Error(args ...interface{}) {
	log.Error(args...)
}

// Panic logs a message at level Panic on the standard logger.
func Panic(args ...interface{}) {
	log.Panic(args...)
}

// Fatal logs a message at level Fatal on the standard logger.
func Fatal(args ...interface{}) {
	log.Fatal(args...)
}

// Debugf logs a message at level Debug on the standard logger.
func Debugf(format string, args ...interface{}) {
	log.Debugf(format, args...)
}

// Infof logs a message at level Info on the standard logger.
func Infof(format string, args ...interface{}) {
	log.Infof(format, args...)
}

// Warnf logs a message at level Warn on the standard logger.
func Warnf(format string, args ...interface{}) {
	log.Warnf(format, args...)
}

// Errorf logs a message at level Error on the standard logger.
func Errorf(format string, args ...interface{}) {
	log.Errorf(format, args...)
}

// Panicf logs a message at level Panic on the standard logger.
func Panicf(format string, args ...interface{}) {
	log.Panicf(format, args...)
}

// Fatalf logs a message at level Fatal on the standard logger.
func Fatalf(format string, args ...interface{}) {
	log.Fatalf(format, args...)
}
